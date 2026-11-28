-- SqlServer.CS SqlServer.2025
DECLARE @local DateTime2
SET     @local = DATETIME2FROMPARTS(2020, 6, 15, 12, 0, 0, 0, 7)

SELECT TOP (2)
	DatePart(hour, @local)
FROM
	[ZonedRow] [r]

-- SqlServer.CS SqlServer.2025
DECLARE @local DateTime2
SET     @local = DATETIME2FROMPARTS(2020, 6, 15, 12, 0, 0, 0, 7)
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT TOP (2)
	ToDateTimeOffset(DateAdd(month, 6, @local), DatePart(tz, (@local AT TIME ZONE @zone)))
FROM
	[ZonedRow] [r]

-- SqlServer.CS SqlServer.2025
DECLARE @months Int -- Int32
SET     @months = 6
DECLARE @local DateTime2
SET     @local = DATETIME2FROMPARTS(2020, 6, 15, 12, 0, 0, 0, 7)
DECLARE @zone NVarChar(4000) -- String
SET     @zone = N'Central European Standard Time'

SELECT TOP (2)
	ToDateTimeOffset(DateAdd(month, @months, @local), DatePart(tz, (@local AT TIME ZONE @zone)))
FROM
	[ZonedRow] [r]

