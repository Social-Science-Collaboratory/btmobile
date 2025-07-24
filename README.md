# Repository description

This repository contains data and code for the manuscript, ‘During urgent societal events, are larger research teams faster and more impactful?’.

## Note on computational workflow

To begin, we recommend reviewing btmobile25a_FileOrganization.png, which illustrates the project’s computational workflow. This includes the initial pulling of records (e.g., btmobile25a_api_cgpt.Rmd) to compiling key results (btmobile25a_PilotResults.Rmd).

## Note on proprietary nature of Altmetric data

The Altmetric data used in this paper is proprietary. We only have permission to share for private peer review.

<https://help.altmetric.com/support/solutions/articles/6000254871-faqs-for-scientometric-researchers>

Data were made available during the initial submission, and we are firmly committed to sharing with others who wish to engage in post-publication review. In fact, we believe that *not* doing so would violate data retention rules at our host institution (see DataRetentionGuidelines_012625.pdf).

To facilitate data sharing for private peer review cases, we have uploaded encrypted copies of Altmetric data to this OSF repository. Please contact the corresponding author for the password. To further support efforts to assess the computational reproducibility of our workflow, we have uploaded scrambled copies of Altmetric data to this OSF repository. These scrambled data do not require a password to use.

# Description of major files

## Main directory

-   setup.R: loads libraries and preferred options
-   btmobile25a_PilotResults.Rmd: Compiles pilot results and figure

### admin folder

-   btmobile25a_FileOrganization.png: This figure illustrates the project’s computational workflow, highlighting the main scripts and data sets that were used in our analysis.
-   DataRetentionGuidelines_012625.pdf: Copy of Data Retention Guidelines at the corresponding authors’ institution.

### data generation folder

-   btmobile25a_altmetric_scramble.Rmd: This code scrambles proprietary Altmetric data for sharing.
-   btmobile25a_combine.Rmd: This code combines OpenAlex and Altmetric data.

#### api subfolder

-   btmobile25a_api_cgpt.Rmd: This code uses the OpenAlex API to compile papers with keyword ‘ChatGPT’
-   btmobile25a_api_covid.Rmd: This code uses the OpenAlex API to compile papers with keyword ‘COVID-19’
-   btmobile25a_api_terrorism.Rmd: This code fetches papers from the OpenAlex API using keyword ‘terrorism’.

### data folder

-   altmetric.proprietary.encrypted.zip: Encrypted folder containing datasets (both raw and processed) with proprietary Altmetric data. Files can be shared for private peer review. Contact corresponding author for password.
-   btmobile25a_codebook.xlsx: This spreadsheet is a codebook with variable descriptions for each of the spreadsheets within the data folder.

#### cgpt subfolder (for papers linked to keyword ‘ChatGPT’

-   btmobile25a_data_raw_cgpt.Rds: Raw data for papers pulled from OpenAlex.
-   btmobile25a_data_binded_cgpt.Rds: Processed data for papers pulled from OpenAlex.
-   btmobile25a_data_doi_cgpt.csv: This spreadsheet contains the OpenAlex ID and DOIs for papers pulled from OpenAlex. DOI’s were used for manual Altmetric data extraction.
-   btmobile25a_altmetric_cgpt_scrambled.csv: This spreadsheet contains DOI, policy document mention, and news output mention data manually extracted from Altmetric. Data are proprietary, so the data are scrambled.

#### covid subfolder (for papers linked to keyword ‘COVID-19’)

-   btmobile25a_data_raw1_covid.Rds: Raw data for papers pulled from OpenAlex.
-   btmobile25a_data_raw2_covid.Rds: Raw data for papers pulled from OpenAlex.
-   btmobile25a_data_binded1_covid.Rds: Processed data for papers pulled from OpenAlex.
-   btmobile25a_data_binded2_covid.Rds: Processed data for papers pulled from OpenAlex.
-   btmobile25adata_binded_covid.Rds: Processed data for papers pulled from OpenAlex.
-   btmobile25a_data_doi_covid.csv: This spreadsheet contains the OpenAlex ID and DOIs for papers pulled from OpenAlex. DOI’s were used for manual Altmetric data extraction.
-   btmobile25a_altmetric_covid_scrambled.csv: This spreadsheet contains DOI, policy document mention, and news output mention data manually extracted from Altmetric. Data are proprietary, so the data are scrambled.

#### terrorism subfolder (for papers linked to keyword ‘terrorism’)

-   btmobile25a_data_raw_terrorism.Rds: Raw data for papers pulled from OpenAlex.
-   btmobile25a_data_doi_terrorism.csv: This spreadsheet contains the OpenAlex ID and DOIs for papers pulled from OpenAlex. DOI’s were used for manual Altmetric data extraction.
-   btmobile25a_altmetric_terror_scrambled.csv: This spreadsheet contains DOI, policy document mention, and news output mention data manually extracted from Altmetric. Data are proprietary, so the data are scrambled.

#### combined subfolder

-   DF.oa.combined.Rds: Combined OpenAlex data for papers linked to keyword “ChatGPT”, “COVID-19”, or “terrorism”.
-   DF.alt.combined.scrambled.Rds: Combined Altmetric data for papers linked to keyword “ChatGPT”, “COVID-19”, or “terrorism”. Data are proprietary, so the data are scrambled.
-   DF.full.combined.scrambled.Rds: Combined OpenAlex and Altmetric data for papers papers linked to keyword “ChatGPT”, “COVID-19”, or “terrorism”. Some variables are pulled from the proprietary Altmetric dataset. Those data are scrambled.
-   DF.full.combined.processed.scrambled.Rds: Slightly more processed version of DF.full.combined.scrambled.

### event_sampling folder
-   btmobile25a_LLMPrompt.txt: Information about prompt used to extract list of urgent societal events from a large language model.
-   btmobile25a_LLMOutput.txt: Large language model output to a prompt request for a list of urgent societal events.
-   btmobile25a_EventList.xlsx: Excel file where information about urgent societal event eligiblity was compiled (e.g., estimates of number of OpenAlex records)

### power_sim folder
-   btmobile25a_PwrSim.Rmd: Code for conducting, summarizing, and visualizing the results of a power simulation.
-   btmobile25a_pwrsim_outcome.Rds: Output of power simulation.
