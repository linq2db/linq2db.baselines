BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TransactionEntity]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TransactionEntity]
(
	[Id]      Guid      NOT NULL,
	[ValidOn] DateTime2 NOT NULL,

	CONSTRAINT [PK_TransactionEntity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [LineEntity]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [LineEntity]
(
	[Id]            Guid          NOT NULL,
	[TransactionId] Guid          NOT NULL,
	[Amount]        Decimal       NOT NULL,
	[Currency]      NVarChar(255)     NULL,

	CONSTRAINT [PK_LineEntity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Amount],
	[d].[Currency]
FROM
	(
		SELECT DISTINCT
			[x].[Id]
		FROM
			[TransactionEntity] [x]
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					(
						SELECT
							[a_Lines].[Currency]
						FROM
							[LineEntity] [a_Lines]
						WHERE
							[x].[Id] = [a_Lines].[TransactionId]
						INTERSECT
						SELECT
							[t1].[item] as [Currency]
						FROM
							(
								SELECT NULL [item] WHERE 1 = 0
								UNION ALL
								VALUES
									('A'), ('B')
								) [t1]
					) [t2]
			)
	) [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[ValidOn]
FROM
	[TransactionEntity] [x]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT
					[a_Lines].[Currency]
				FROM
					[LineEntity] [a_Lines]
				WHERE
					[x].[Id] = [a_Lines].[TransactionId]
				INTERSECT
				SELECT
					[t1].[item] as [Currency]
				FROM
					(
						SELECT NULL [item] WHERE 1 = 0
						UNION ALL
						VALUES
							('A'), ('B')
						) [t1]
			) [t2]
	)
ORDER BY
	[x].[ValidOn]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [LineEntity]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TransactionEntity]

