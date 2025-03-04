﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First NVarchar2(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second NVarchar2(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO "Base2"
(
	"Id",
	"Type",
	"Test_ChildId",
	"Name_First",
	"Name_Second"
)
VALUES
(
	:Id,
	:Type,
	:ChildId,
	:Name_First,
	:Name_Second
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Type",
	t1."Id",
	t1."Test_ChildId",
	t1."Name_First",
	t1."Name_Second"
FROM
	"Base2" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First NVarchar2(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second NVarchar2(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"Base2" t1
SET
	"Type" = :Type,
	"Test_ChildId" = :ChildId,
	"Name_First" = :Name_First,
	"Name_Second" = :Name_Second
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Type",
	t1."Id",
	t1."Test_ChildId",
	t1."Name_First",
	t1."Name_Second"
FROM
	"Base2" t1
WHERE
	ROWNUM <= 2

