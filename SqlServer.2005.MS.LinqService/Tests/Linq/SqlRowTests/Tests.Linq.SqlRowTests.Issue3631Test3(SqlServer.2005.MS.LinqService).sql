BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3631Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NULL)
	CREATE TABLE [Issue3631Table]
	(
		[Country] NVarChar(2) NOT NULL,
		[State]   NVarChar(2) NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'US'
DECLARE @State NVarChar(2) -- String
SET     @State = N'AL'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'US'
DECLARE @State NVarChar(2) -- String
SET     @State = N'AZ'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'US'
DECLARE @State NVarChar(2) -- String
SET     @State = N'CA'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'US'
DECLARE @State NVarChar(2) -- String
SET     @State = N'FL'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'US'
DECLARE @State NVarChar(2) -- String
SET     @State = N'IN'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'US'
DECLARE @State NVarChar(2) -- String
SET     @State = N'OH'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'US'
DECLARE @State NVarChar(2) -- String
SET     @State = N'NY'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'CA'
DECLARE @State NVarChar(2) -- String
SET     @State = N'AB'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Country NVarChar(2) -- String
SET     @Country = N'CA'
DECLARE @State NVarChar(2) -- String
SET     @State = N'ON'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	([x].[Country], [x].[State]) IN (
		SELECT
			[t1].[Item1],
			[t1].[Item2]
		FROM
			(
				SELECT N'US' AS [Item1], N'CA' AS [Item2]
				UNION ALL
				SELECT N'US', N'NY') [t1]
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue3631Table]

