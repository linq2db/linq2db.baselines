﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."TypeDiscriminator",
	t1."InheritanceParentId",
	t1."Name"
FROM
	"InheritanceParent" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."TypeDiscriminator",
	t1."InheritanceChildId",
	t1."InheritanceParentId",
	t1."Name"
FROM
	"InheritanceChild" t1

