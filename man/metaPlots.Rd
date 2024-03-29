% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metaPlots.R
\name{metaPlots}
\alias{metaPlots}
\title{metaPlots}
\usage{
metaPlots(NomeData, nr = 2, nROI = 2, ROIgroup = "motif", span = 0.05)
}
\arguments{
\item{NomeData}{A Ranged Summarized Experiment (RSE) with an entry
for each ROI. The (\code{rowData}) should contain information about
each ROI, including a ROIgroup.The (\code{assays}) should contain at
least (\code{nFragsAnalyzed}) and (\code{reads}). (\code{nFragsAnalyzed})
describes the number of fragments that were analyzed for each sample/ROI
combination. (\code{reads}) contains a Gpos object for each
sample/ROI combination, with a position for each base in the ROI
and two metadata columns (protection and methylation). protection
is a sparse logical matrix where TRUE stands for Cs protected from
methylation, and methylation is a sparse logical matrix where TRUE
stands for methylated Cs.}

\item{nr}{Integer used as a cutoff to filter sample ROI
combinations that have less than
(\code{nr}) fragments analyzed (nFragsAnalyzed column).}

\item{nROI}{The number of ROIs that need to have a GpC
methylation measurement at a given
position for this position to be included in the plot.}

\item{ROIgroup}{Column name of a metadata column in the
rowData of the RSE, describing a group each ROI belongs to,
for example, different transcription factor motifs at the
center of the ROI.}

\item{span}{The (\code{span}) option to be used for the
(\code{loess}) function (to draw a line through the datapoints).}
}
\value{
A tibble with the methylation protection
profiles summarized across all ROIs in a certain group.
}
\description{
Plot the summarized GCH methylation protections
across selected ROIs.
}
\details{
Summarizes the GCH methylation protections
across selected ROIs.
}
\examples{
NomeData <- createExampleData()
metaPlots(NomeData)

}
