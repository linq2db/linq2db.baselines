-- SqlServer.CS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = NULL

INSERT INTO [CoarseNullableEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SqlServer.CS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = DATETIME2FROMPARTS(2026, 6, 1, 11, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 6, 1, 13, 0, 0, 0, 7)

INSERT INTO [CoarseNullableEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	Coalesce([r].[FinishedOn], [r].[StartedOn]) < DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7)

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7) > Coalesce([r].[FinishedOn], [r].[StartedOn])

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[CoarseNullableEventRow] [r]
WHERE
	Coalesce([r].[FinishedOn], [r].[StartedOn]) = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7)

