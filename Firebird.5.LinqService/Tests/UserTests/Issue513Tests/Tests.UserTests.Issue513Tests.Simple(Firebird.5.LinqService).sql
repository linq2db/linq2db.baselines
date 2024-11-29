BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "t1"."TypeDiscriminator" = 2 THEN TRUE
		ELSE FALSE
	END,
	"t1"."InheritanceParentId",
	"t1"."TypeDiscriminator",
	"t1"."Name",
	CASE
		WHEN "t1"."TypeDiscriminator" = 1 THEN TRUE
		ELSE FALSE
	END
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "t1"."TypeDiscriminator" = 2 THEN TRUE
		ELSE FALSE
	END,
	"t1"."InheritanceChildId",
	"t1"."TypeDiscriminator",
	"t1"."InheritanceParentId",
	"t1"."Name",
	CASE
		WHEN "t1"."TypeDiscriminator" = 1 THEN TRUE
		ELSE FALSE
	END
FROM
	"InheritanceChild" "t1"

