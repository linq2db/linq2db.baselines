-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'first'
DECLARE $Version INTEGER -- Int32
SET     $Version = 10
DECLARE $CreatedAt TIMESTAMP -- DateTime2
SET     $CreatedAt = NULL
DECLARE $CreatedBy NVarChar -- String
SET     $CreatedBy = NULL
DECLARE $UpdatedAt TIMESTAMP -- DateTime2
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
	UpdatedAt = $UpdatedAt,
	UpdatedBy = $UpdatedBy

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'second'
DECLARE $Version INTEGER -- Int32
SET     $Version = 20
DECLARE $CreatedAt TIMESTAMP -- DateTime2
SET     $CreatedAt = NULL
DECLARE $CreatedBy NVarChar -- String
SET     $CreatedBy = NULL
DECLARE $UpdatedAt TIMESTAMP -- DateTime2
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
	UpdatedAt = $UpdatedAt,
	UpdatedBy = $UpdatedBy

-- DuckDB
SELECT
	t1.Id,
	t1.Name,
	t1."Version",
	t1.CreatedAt,
	t1.CreatedBy,
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	UpsertTest t1
ORDER BY
	t1.Id

