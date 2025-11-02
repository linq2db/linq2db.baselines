-- SqlCe

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

-- SqlCe

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

-- SqlCe

SELECT
	[t1].[cond],
	[t1].[Data_1]
FROM
	[User] [t]
		LEFT JOIN (
			SELECT
				[a_Data].[Data] as [Data_1],
				1 as [cond]
			FROM
				(
					SELECT 'Testing' AS Data
				) [a_Data]
		) [t1] ON 1=1

