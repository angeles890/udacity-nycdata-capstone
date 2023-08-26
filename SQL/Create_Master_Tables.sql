/**
IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 FIRST_ROW = 2,
			 USE_TYPE_DEFAULT = FALSE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'udacitycapstonenycdata_udacitycapstonenycdata_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [udacitycapstonenycdata_udacitycapstonenycdata_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://udacitycapstonenycdata@udacitycapstonenycdata.dfs.core.windows.net' 
	)
GO 
**/

CREATE TABLE [dbo].[NYC_Payroll_EMP_MD] (
    [EmployeeID] [varchar](10) NULL,
    [LastName] [varchar](20) NULL,
    [FirstName] [varchar](20) NULL
	)
GO


CREATE TABLE [dbo].[NYC_Payroll_TITLE_MD] (
    [TitleCode] [varchar](10) NULL,
    [TitleDescription] [varchar](100) NULL
	)
GO



CREATE TABLE [dbo].[NYC_Payroll_AGENCY_MD] (
	[AgencyID] bigint,
	[AgencyName] nvarchar(4000)
	)
GO


CREATE TABLE [dbo].[NYC_Payroll_Data] (
	[FiscalYear] bigint,
	[PayrollNumber] bigint,
	[AgencyCode] bigint,
	[AgencyName] nvarchar(4000),
	[EmployeeID] bigint,
	[LastName] nvarchar(4000),
	[FirstName] nvarchar(4000),
	[AgencyStartDate] nvarchar(4000),
	[WorkLocationBorough] nvarchar(4000),
	[TitleCode] bigint,
	[TitleDescription] nvarchar(4000),
	[LeaveStatusasofJune30] nvarchar(4000),
	[BaseSalary] float,
	[PayBasis] nvarchar(4000),
	[RegularHours] bigint,
	[RegularGrossPaid] float,
	[OTHours] float,
	[TotalOTPaid] float,
	[TotalOtherPay] float
	)
GO
