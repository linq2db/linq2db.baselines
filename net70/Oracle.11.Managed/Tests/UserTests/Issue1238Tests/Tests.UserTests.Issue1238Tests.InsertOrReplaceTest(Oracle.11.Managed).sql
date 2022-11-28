﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 Varchar2 -- String
SET     @Key2 = NULL
DECLARE @Data_1 Int32
SET     @Data_1 = 1

MERGE INTO "InheritanceParent" t1
USING (SELECT :Key1 AS "InheritanceParentId", :Key2 AS "Name" FROM SYS.DUAL) s ON
(
	t1."InheritanceParentId" = s."InheritanceParentId" AND
	(t1."Name" IS NULL AND s."Name" IS NULL OR t1."Name" = s."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."TypeDiscriminator" = :Data_1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		:Key1,
		:Key2,
		:Data_1
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Count(*)
FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 Varchar2 -- String
SET     @Key2 = NULL
DECLARE @Data_1 Int32
SET     @Data_1 = 1

MERGE INTO "InheritanceParent" t1
USING (SELECT :Key1 AS "InheritanceParentId", :Key2 AS "Name" FROM SYS.DUAL) s ON
(
	t1."InheritanceParentId" = s."InheritanceParentId" AND
	(t1."Name" IS NULL AND s."Name" IS NULL OR t1."Name" = s."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."TypeDiscriminator" = :Data_1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		:Key1,
		:Key2,
		:Data_1
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Count(*)
FROM
	"InheritanceParent" t1

BeforeExecute
RollbackTransaction
