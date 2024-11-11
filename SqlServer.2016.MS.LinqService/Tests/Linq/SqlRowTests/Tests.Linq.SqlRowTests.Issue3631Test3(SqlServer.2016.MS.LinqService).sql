BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue3631Table]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Issue3631Table]', N'U') IS NULL)
	CREATE TABLE [Issue3631Table]
	(
		[Country] NVarChar(2) NOT NULL,
		[State]   NVarChar(2) NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

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
			(VALUES
				(N'US',N'CA'), (N'US',N'NY')
			) [t1]([Item1], [Item2])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue3631Table]

