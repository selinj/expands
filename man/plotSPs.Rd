\name{plotSPs}
\alias{plotSPs}
\title{Subpopulation Visualization}
\description{Plots coexistent subpopulations determined by ExPANdS.}
\usage{
plotSPs(dm, sampleID=NA, cex=0.5, legend="CN_Estimate", orderBy="chr", rawAF=F)
}
\arguments{
  \item{dm}{
	 Matrix in which each row corrsponds to a point mutation (for example, the matrix output of \code{\link{assignMutations}}). Has to contain at least the following columnnames:\cr
        \bold{chr} - the chromosome on which each mutation is located; \cr
        \bold{startpos} - the genomic position of each mutation;\cr
        \bold{AF_Tumor} - the allele-frequency of each mutation;\cr
        \bold{CN_Estimate} - the absolute copy number estimated for each segment;\cr
        \bold{PN_B} - the ploidy of the B-allele in normal cells (binary variable: 1 if the mutation is a germline variant, 0 if somatic);\cr
	\bold{SP} - the subpopulation to which each point mutation has been assigned (as fraction of cells in the tumor bulk);\cr
	\bold{SP_cnv} - the subpopulation to which the CNV has been asssigned (if an CNV exists at this locus); \cr
	\bold{\%maxP} -	the confidence with which the mutation has been assigned to the correspoding subpopulation;\cr
	\bold{PM} - the total ploidy of all alleles at the mutated genomic locus, in subpopulation SP.\cr
	\bold{PM_cnv} - the total ploidy of all alleles at the mutated genomic locus, in the subpopulation harboring an CNV (SP_cnv).
}
  \item{sampleID}{
	The name of the sample in which the mutations have been detected.
}
  \item{cex}{
	The amount by which plotting text and symbols should be magnified relative to the default. See also \code{help(par).}
}

  \item{legend}{
	Allele frequencies and ploidies are colored based on the chromosome on which the mutation is located (option: 'chr') or based on the average copy number in the sample (option: 'CN_Estimate').
}        
  \item{orderBy}{
	Loci within a subpopulation are sorted by genomic location (option 'chr') or by the confidence with which they have been assigned to the subpopulation (option '\%maxP').
}
  \item{rawAF}{
	Specifies whether the allele frequency of SNVs should be adjusted relative to the assigned subpopulation (options: true, false).
}
}

\value{
For each point mutation (x-axis) the function displays:\cr
     - the size of the subpopulation to which the mutation has been assigned (squares). Each square is colored based on the confidence with which the mutation has been assigned to the corresponding subpopulation (black - highest, white - lowest).\cr
     - the total ploidy of all alleles at the mutated genomic locus in that subpopulation (dots).\cr
     - only for loci with an CNV and an SNV each in distinct subpopulations: the total ploidy of all alleles at the mutated genomic locus in the subpopulation which harbors the CNV (crosses).\cr
     - the allele frequency of the mutation (stars - somatic mutations, triangles - loss of heterozygosity).
}

\author{Noemi Andor}
