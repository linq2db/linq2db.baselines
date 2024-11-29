BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t1."TypeDiscriminator" = 2 THEN 1
		ELSE 0
	END,
	t1."InheritanceParentId",
	t1."TypeDiscriminator",
	t1."Name",
	CASE
		WHEN t1."TypeDiscriminator" = 1 THEN 1
		ELSE 0
	END
FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t1."TypeDiscriminator" = 2 THEN 1
		ELSE 0
	END,
	t1."InheritanceChildId",
	t1."TypeDiscriminator",
	t1."InheritanceParentId",
	t1."Name",
	CASE
		WHEN t1."TypeDiscriminator" = 1 THEN 1
		ELSE 0
	END
FROM
	"InheritanceChild" t1

