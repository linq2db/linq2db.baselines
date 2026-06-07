-- DuckDB

MERGE INTO UpsertTest Target
USING (VALUES
	(1,'x',1,NULL,NULL,NULL,NULL)
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
	EXISTS(
		SELECT
			*
		FROM
			UpsertTest r
		WHERE
			r.Id = 1
	)

