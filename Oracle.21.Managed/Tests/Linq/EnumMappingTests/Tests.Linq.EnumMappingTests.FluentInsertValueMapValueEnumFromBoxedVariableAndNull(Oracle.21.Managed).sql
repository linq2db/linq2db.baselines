-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 0
DECLARE @ClaimedKeyType Varchar2(2) -- String
SET     @ClaimedKeyType = 'EC'
DECLARE @ClaimedKeyTypeN Varchar2 -- String
SET     @ClaimedKeyTypeN = NULL

INSERT INTO "FluentMappedEnumKeyRecord"
(
	"Id",
	"ClaimedKeyType",
	"ClaimedKeyTypeN"
)
VALUES
(
	:Id,
	:ClaimedKeyType,
	:ClaimedKeyTypeN
)

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."ClaimedKeyType",
	t1."ClaimedKeyTypeN"
FROM
	"FluentMappedEnumKeyRecord" t1
FETCH NEXT 2 ROWS ONLY

