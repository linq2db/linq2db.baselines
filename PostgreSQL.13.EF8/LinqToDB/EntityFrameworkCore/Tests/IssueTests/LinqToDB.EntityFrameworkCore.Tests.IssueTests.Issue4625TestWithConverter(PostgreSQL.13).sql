-- PostgreSQL.9.5 PostgreSQL
DECLARE @DateTimeOffsetWithConverter Bigint -- Int64
SET     @DateTimeOffsetWithConverter = 1304956839836121088
DECLARE @DateTimeOffsetNWithConverter Bigint -- Int64
SET     @DateTimeOffsetNWithConverter = 1304956839836121088

UPDATE
	"Types"
SET
	"DateTimeOffsetWithConverter" = :DateTimeOffsetWithConverter,
	"DateTimeOffsetNWithConverter" = :DateTimeOffsetNWithConverter
WHERE
	"Types"."Id" = 2



