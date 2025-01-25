BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[file_id],
	[t1].[file_guid],
	[t1].[type],
	[t1].[type_desc],
	[t1].[data_space_id],
	[t1].[name],
	[t1].[physical_name],
	[t1].[state],
	[t1].[state_desc],
	[t1].[size],
	[t1].[max_size],
	[t1].[growth],
	[t1].[is_media_read_only],
	[t1].[is_read_only],
	[t1].[is_sparse],
	[t1].[is_percent_growth],
	[t1].[is_name_reserved],
	[t1].[create_lsn],
	[t1].[drop_lsn],
	[t1].[read_only_lsn],
	[t1].[read_write_lsn],
	[t1].[differential_base_lsn],
	[t1].[differential_base_guid],
	[t1].[differential_base_time],
	[t1].[redo_start_lsn],
	[t1].[redo_start_fork_guid],
	[t1].[redo_target_lsn],
	[t1].[redo_target_fork_guid],
	[t1].[backup_lsn]
FROM
	[sys].[database_files] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'TestDataMS'

SELECT
	FILEPROPERTY(@Name, 'IsPrimaryFile')

