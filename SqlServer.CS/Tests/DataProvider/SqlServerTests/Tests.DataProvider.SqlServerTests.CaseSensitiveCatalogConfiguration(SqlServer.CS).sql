-- SqlServer.CS SqlServer.2025
SELECT collation_name FROM sys.databases WHERE database_id = DB_ID()

-- SqlServer.CS SqlServer.2025
SELECT catalog_collation_type_desc FROM sys.databases WHERE database_id = DB_ID()

-- SqlServer.CS SqlServer.2025
SELECT containment_desc FROM sys.databases WHERE database_id = DB_ID()

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[PersonID]
FROM
	[person] [t1]

