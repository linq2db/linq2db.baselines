BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t1."TypeDiscriminator" = 2 THEN True
		ELSE False
	END,
	t1."InheritanceParentId",
	t1."TypeDiscriminator",
	t1."Name",
	CASE
		WHEN t1."TypeDiscriminator" = 1 THEN True
		ELSE False
	END
FROM
	"InheritanceParent" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t1."TypeDiscriminator" = 2 THEN True
		ELSE False
	END,
	t1."InheritanceChildId",
	t1."TypeDiscriminator",
	t1."InheritanceParentId",
	t1."Name",
	CASE
		WHEN t1."TypeDiscriminator" = 1 THEN True
		ELSE False
	END
FROM
	"InheritanceChild" t1

