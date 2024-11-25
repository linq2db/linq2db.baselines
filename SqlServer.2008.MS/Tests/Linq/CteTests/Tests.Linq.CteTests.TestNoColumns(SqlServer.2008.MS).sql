BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

WITH [CTE1_] ([unused])
AS
(
	SELECT
		1
	FROM
		[Child] [t1]
)
SELECT
	COUNT(*)
FROM
	[CTE1_] [t2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

WITH [CTE1_] ([unused])
AS
(
	SELECT
		1
	FROM
		[Child] [c_1]
)
SELECT
	COUNT(*)
FROM
	[CTE1_] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

WITH [CTE1_] ([unused])
AS
(
	SELECT
		1
	FROM
		[Child] [c_1]
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[CTE1_] [t1]
		)
			THEN 1
		ELSE 0
	END

