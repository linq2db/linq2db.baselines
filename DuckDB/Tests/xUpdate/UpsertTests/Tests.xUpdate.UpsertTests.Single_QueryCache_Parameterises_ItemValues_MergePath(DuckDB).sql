-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 42
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'seed'
DECLARE $Version  -- Int32
SET     $Version = 1
DECLARE $CreatedAt  -- DateTime2
SET     $CreatedAt = NULL
DECLARE $CreatedBy NVarChar -- String
SET     $CreatedBy = NULL
DECLARE $UpdatedAt  -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy NVarChar -- String
SET     $UpdatedBy = NULL

INSERT INTO UpsertTest
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

-- DuckDB

MERGE INTO UpsertTest Target
USING (VALUES
	(42,'first-update',50,NULL,NULL,NULL,NULL)
) Source
(
	Id,
	Name,
	Version_1,
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Name = Source.Name,
	"Version" = Source.Version_1,
	CreatedAt = Source.CreatedAt,
	CreatedBy = Source.CreatedBy,
	UpdatedAt = Source.UpdatedAt,
	UpdatedBy = Source.UpdatedBy

-- DuckDB

MERGE INTO UpsertTest Target
USING (VALUES
	(42,'second-update',99,NULL,NULL,NULL,NULL)
) Source
(
	Id,
	Name,
	Version_1,
	CreatedAt,
	CreatedBy,
	UpdatedAt,
	UpdatedBy
)
ON (Target.Id = Source.Id)

WHEN MATCHED THEN
UPDATE
SET
	Name = Source.Name,
	"Version" = Source.Version_1,
	CreatedAt = Source.CreatedAt,
	CreatedBy = Source.CreatedBy,
	UpdatedAt = Source.UpdatedAt,
	UpdatedBy = Source.UpdatedBy

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
	r.Id = 42
LIMIT 2

