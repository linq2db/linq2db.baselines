-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'first'
DECLARE $Version INTEGER -- Int32
SET     $Version = 1
DECLARE $insertTime TIMESTAMP -- DateTime2
SET     $insertTime = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $updateTime TIMESTAMP -- DateTime2
SET     $updateTime = '2026-01-01 12:00:00.000000'::TIMESTAMP

INSERT INTO UpsertTest AS t1
(
	Id,
	Name,
	"Version",
	CreatedAt,
	CreatedBy
)
VALUES
(
	$Id,
	$Name,
	$Version,
	$insertTime,
	'system'
)
ON CONFLICT (Id) DO UPDATE SET
	Name = $Name,
	"Version" = $Version,
	UpdatedAt = $updateTime,
	UpdatedBy = 'system'

-- DuckDB
SELECT
	r.Id,
	r.Name,
	r."Version",
	r.CreatedAt,
	r.CreatedBy,
	r.UpdatedAt,
	r.UpdatedBy
FROM
	UpsertTest r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'second'
DECLARE $Version INTEGER -- Int32
SET     $Version = 2
DECLARE $insertTime TIMESTAMP -- DateTime2
SET     $insertTime = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $updateTime TIMESTAMP -- DateTime2
SET     $updateTime = '2026-01-01 12:00:00.000000'::TIMESTAMP

INSERT INTO UpsertTest AS t1
(
	Id,
	Name,
	"Version",
	CreatedAt,
	CreatedBy
)
VALUES
(
	$Id,
	$Name,
	$Version,
	$insertTime,
	'system'
)
ON CONFLICT (Id) DO UPDATE SET
	Name = $Name,
	"Version" = $Version,
	UpdatedAt = $updateTime,
	UpdatedBy = 'system'

-- DuckDB
SELECT
	r.Id,
	r.Name,
	r."Version",
	r.CreatedAt,
	r.CreatedBy,
	r.UpdatedAt,
	r.UpdatedBy
FROM
	UpsertTest r
WHERE
	r.Id = 1
LIMIT 2

