BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First Varchar2(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second Varchar2(6) -- String
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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Type" as "Type_1",
	t1."Id",
	t1."Test_ChildId" as "ChildId",
	t1."Name_First" as "First_1",
	t1."Name_Second" as "Second_1"
FROM
	"Base2" t1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First Varchar2(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second Varchar2(6) -- String
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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Type" as "Type_1",
	t1."Id",
	t1."Test_ChildId" as "ChildId",
	t1."Name_First" as "First_1",
	t1."Name_Second" as "Second_1"
FROM
	"Base2" t1
FETCH NEXT 2 ROWS ONLY

