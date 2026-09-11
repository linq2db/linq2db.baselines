-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"AsyncDataTable" "c_1"
		WHERE
			"c_1"."Id" = @p
	)
FROM rdb$database

