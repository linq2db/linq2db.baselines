-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'ts-ins'
DECLARE $Version  -- Int32
SET     $Version = 1
DECLARE $CreatedBy NVarChar -- String
SET     $CreatedBy = NULL
DECLARE $UpdatedAt  -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy NVarChar -- String
SET     $UpdatedBy = NULL
DECLARE $CreatedAt  -- DateTime2
SET     $CreatedAt = NULL

INSERT INTO UpsertTest AS t1
(
	Id,
	Name,
	"Version",
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
VALUES
(
	$Id,
	$Name,
	$Version,
	now(),
	$CreatedBy,
	$UpdatedAt,
	$UpdatedBy
)
ON CONFLICT (Id) DO UPDATE SET
	Name = $Name,
	"Version" = $Version,
	CreatedAt = $CreatedAt,
	CreatedBy = $CreatedBy,
	UpdatedAt = $UpdatedAt,
	UpdatedBy = $UpdatedBy

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
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'ts-upd'
DECLARE $Version  -- Int32
SET     $Version = 2
DECLARE $CreatedAt  -- DateTime2
SET     $CreatedAt = NULL
DECLARE $CreatedBy NVarChar -- String
SET     $CreatedBy = NULL
DECLARE $UpdatedAt  -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy NVarChar -- String
SET     $UpdatedBy = NULL

INSERT INTO UpsertTest AS t1
(
	Id,
	Name,
	"Version",
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
VALUES
(
	$Id,
	$Name,
	$Version,
	$CreatedAt,
	$CreatedBy,
	$UpdatedAt,
	$UpdatedBy
)
ON CONFLICT (Id) DO UPDATE SET
	Name = $Name,
	"Version" = $Version,
	CreatedAt = $CreatedAt,
	CreatedBy = $CreatedBy,
	UpdatedAt = now(),
	UpdatedBy = $UpdatedBy

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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Name NVarChar(7) -- String
SET     $Name = 'root-ts'
DECLARE $Version  -- Int32
SET     $Version = 1
DECLARE $CreatedBy NVarChar -- String
SET     $CreatedBy = NULL
DECLARE $UpdatedAt  -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy NVarChar -- String
SET     $UpdatedBy = NULL

INSERT INTO UpsertTest AS t1
(
	Id,
	Name,
	"Version",
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
VALUES
(
	$Id,
	$Name,
	$Version,
	now(),
	$CreatedBy,
	$UpdatedAt,
	$UpdatedBy
)
ON CONFLICT (Id) DO UPDATE SET
	Name = $Name,
	"Version" = $Version,
	CreatedAt = now(),
	CreatedBy = $CreatedBy,
	UpdatedAt = $UpdatedAt,
	UpdatedBy = $UpdatedBy

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
	r.Id = 2
LIMIT 2

