BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
			WHERE
				("t1"."MiddleName" = '123') = ("t1"."MiddleName" = '1' OR "t1"."MiddleName" = 'test' AND ("t1"."MiddleName" <> '1' OR "t1"."MiddleName" IS NULL))
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

