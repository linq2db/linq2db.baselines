-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
SET     @FinishedOn = '2026-01-01 15:30:00.250'
DECLARE @Due VarChar(23) -- AnsiString
SET     @Due = '2026-01-01 10:00:00.000'

INSERT INTO [ShiftTargetRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[Due]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Due
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[ShiftTargetRow]
SET
	[Due] = Strftime('%Y-%m-%d %H:%M:%f', JulianDay('2026-03-01 00:00:00.000') + Round(CAST(CAST(Round((JulianDay([ShiftTargetRow].[FinishedOn]) - JulianDay([ShiftTargetRow].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) * 0.0001) * 1.1574074074074074E-08)
WHERE
	[ShiftTargetRow].[Id] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Due]
FROM
	[ShiftTargetRow] [r]
LIMIT 2

