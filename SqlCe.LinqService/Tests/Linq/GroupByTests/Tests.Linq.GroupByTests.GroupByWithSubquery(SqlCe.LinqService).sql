BeforeExecute
-- SqlCe

SELECT
	[_1].[c1] as [Key_1],
	COUNT(*) as [COUNT_1]
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[Person] [_]
		WHERE
			1 = 0
	) [_1]
GROUP BY
	[_1].[c1]

