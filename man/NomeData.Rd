% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{NomeData}
\alias{NomeData}
\title{NOMeseq data for WT and AdnpKO mouse ES cells}
\format{
\subsection{\code{NomeData}}{

A RangedSummarizedExperiment with 219 ROIs and 4 samples:
\describe{
\item{colData}{sample names}
\item{rowData}{ROI names with the format:
TFmotif_chromosome_start_end and motif type}
\item{assays}{nFragsAnalyzed: number of fragments that
were analyzed for GCH methylation protection, reads:
a Gpos element for every sample-ROI combination}
\item{GPos_GCH_DataMatrix}{GPos elements with 'protection' metadata
column containing a sparse logical
matrix indicating if a GCH was protected from methylation and
a 'methylation' column containing a sparse logical matrix indicting
if a GCH was methylated. The GPos has data for every position from
300bp upstream to 300bp downstream around a CTCF motif center.}
}
}
}
\source{
generated by Lucas Kaaij
}
\usage{
data(NomeData)
}
\value{
A RangedSummarizedExperiment with 219 ROIs and 4 samples
}
\description{
WT and AdnpKO mouse ES cells were subjected to guided NOMe-seq.
1500 regions were targeted using guideRNAs and Cas9, and bisulfite
sequenced in 300bp paired-end mode. Reads were mapped to the genome
using \href{https://huishenlab.github.io/biscuit/}{biscuit}.
Then we used \href{https://github.com/CGATOxford/UMI-tools}{UMI-tools} to remove
duplicated UMIs. The GCH protection was determined using the
\href{https://github.com/fmi-basel/gpeters-fetchNOMe}{fetch-NOMe} package,
using the 1500 ROIs as input regions. The ROIs were all 600bp long,
and centered around a transcription factor motif.
The resulting tibble was converted into a
RangedSummarizedExperiment using the
\href{https://github.com/fmi-basel/gbuehler-NOMeConverteR}{NOMeConverteR}
package. To reduce
file size, data were filtered to only those ROIs containing
20-180 fragments.
}
\keyword{datasets}
