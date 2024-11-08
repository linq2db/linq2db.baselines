BeforeExecute
-- SqlCe

DROP TABLE [Issue3631Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3631Table]
(
	[Country] NVarChar(2) NOT NULL,
	[State]   NVarChar(2) NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'AL'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'AZ'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'CA'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'FL'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'IN'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'OH'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'US'
DECLARE @State NVarChar(2) -- String
SET     @State = 'NY'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State NVarChar(2) -- String
SET     @State = 'AB'

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
-- SqlCe
DECLARE @Country NVarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State NVarChar(2) -- String
SET     @State = 'ON'

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
-- SqlCe

SELECT
	[x].[Country],
	[x].[State] as [State_1]
FROM
	[Issue3631Table] [x]
WHERE
	([x].[Country], [x].[State]) IN (
		SELECT
			[t1].[Item1],
			[t1].[Item2]
		FROM
			(
				SELECT 'US' AS [Item1], 'CA' AS [Item2]
				UNION ALL
				SELECT 'US' AS [Item1], 'NY' AS [Item2]) [t1]
	)

BeforeExecute
-- SqlCe

DROP TABLE [Issue3631Table]

