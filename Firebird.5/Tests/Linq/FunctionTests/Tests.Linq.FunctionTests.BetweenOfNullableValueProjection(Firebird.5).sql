-- Firebird.5 Firebird4
SELECT
	"p"."ParentID",
	CASE
		WHEN "p"."Value1" BETWEEN 1 AND 3 THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "p"."Value1" NOT BETWEEN 1 AND 3 THEN TRUE
		ELSE FALSE
	END
FROM
	"Parent" "p"

-- Firebird.5 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

