-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DealNumber Int32
SET     @DealNumber = 2
DECLARE @ParcelGroupID Int32
SET     @ParcelGroupID = 3
DECLARE @ParcelID Int32
SET     @ParcelID = 4

INSERT INTO "TradeValid"
(
	"Id",
	"DealNumber",
	"ParcelGroupID",
	"ParcelID"
)
VALUES
(
	:Id,
	:DealNumber,
	:ParcelGroupID,
	:ParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DealNumber Int32
SET     @DealNumber = 3
DECLARE @ParcelGroupID Int32
SET     @ParcelGroupID = 4
DECLARE @ParcelID Int32
SET     @ParcelID = 5

INSERT INTO "TradeValid"
(
	"Id",
	"DealNumber",
	"ParcelGroupID",
	"ParcelID"
)
VALUES
(
	:Id,
	:DealNumber,
	:ParcelGroupID,
	:ParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @DealNumber Int32
SET     @DealNumber = 5
DECLARE @ParcelGroupID Int32
SET     @ParcelGroupID = 6
DECLARE @ParcelID Int32
SET     @ParcelID = 7

INSERT INTO "TradeValid"
(
	"Id",
	"DealNumber",
	"ParcelGroupID",
	"ParcelID"
)
VALUES
(
	:Id,
	:DealNumber,
	:ParcelGroupID,
	:ParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @DealNumber Int32
SET     @DealNumber = 8
DECLARE @ParcelGroupID Int32
SET     @ParcelGroupID = 6
DECLARE @ParcelID Int32
SET     @ParcelID = 9

INSERT INTO "TradeValid"
(
	"Id",
	"DealNumber",
	"ParcelGroupID",
	"ParcelID"
)
VALUES
(
	:Id,
	:DealNumber,
	:ParcelGroupID,
	:ParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DeliveryDealNumber Int32
SET     @DeliveryDealNumber = 2
DECLARE @DeliveryParcelGroup Int32
SET     @DeliveryParcelGroup = 3
DECLARE @DeliveryParcelID Int32
SET     @DeliveryParcelID = 4
DECLARE @ReceiptDealNumber Int32
SET     @ReceiptDealNumber = 9
DECLARE @ReceiptParcelGroup Int32
SET     @ReceiptParcelGroup = 9
DECLARE @ReceiptParcelID Int32
SET     @ReceiptParcelID = 9

INSERT INTO "NominationValid"
(
	"Id",
	"DeliveryDealNumber",
	"DeliveryParcelGroup",
	"DeliveryParcelID",
	"ReceiptDealNumber",
	"ReceiptParcelGroup",
	"ReceiptParcelID"
)
VALUES
(
	:Id,
	:DeliveryDealNumber,
	:DeliveryParcelGroup,
	:DeliveryParcelID,
	:ReceiptDealNumber,
	:ReceiptParcelGroup,
	:ReceiptParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DeliveryDealNumber Int32
SET     @DeliveryDealNumber = 9
DECLARE @DeliveryParcelGroup Int32
SET     @DeliveryParcelGroup = 9
DECLARE @DeliveryParcelID Int32
SET     @DeliveryParcelID = 9
DECLARE @ReceiptDealNumber Int32
SET     @ReceiptDealNumber = 3
DECLARE @ReceiptParcelGroup Int32
SET     @ReceiptParcelGroup = 4
DECLARE @ReceiptParcelID Int32
SET     @ReceiptParcelID = 5

INSERT INTO "NominationValid"
(
	"Id",
	"DeliveryDealNumber",
	"DeliveryParcelGroup",
	"DeliveryParcelID",
	"ReceiptDealNumber",
	"ReceiptParcelGroup",
	"ReceiptParcelID"
)
VALUES
(
	:Id,
	:DeliveryDealNumber,
	:DeliveryParcelGroup,
	:DeliveryParcelID,
	:ReceiptDealNumber,
	:ReceiptParcelGroup,
	:ReceiptParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @DeliveryDealNumber Int32
SET     @DeliveryDealNumber = 8
DECLARE @DeliveryParcelGroup Int32
SET     @DeliveryParcelGroup = 6
DECLARE @DeliveryParcelID Int32
SET     @DeliveryParcelID = 9
DECLARE @ReceiptDealNumber Int32
SET     @ReceiptDealNumber = 3
DECLARE @ReceiptParcelGroup Int32
SET     @ReceiptParcelGroup = 4
DECLARE @ReceiptParcelID Int32
SET     @ReceiptParcelID = 5

INSERT INTO "NominationValid"
(
	"Id",
	"DeliveryDealNumber",
	"DeliveryParcelGroup",
	"DeliveryParcelID",
	"ReceiptDealNumber",
	"ReceiptParcelGroup",
	"ReceiptParcelID"
)
VALUES
(
	:Id,
	:DeliveryDealNumber,
	:DeliveryParcelGroup,
	:DeliveryParcelID,
	:ReceiptDealNumber,
	:ReceiptParcelGroup,
	:ReceiptParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @DeliveryDealNumber Int32
SET     @DeliveryDealNumber = 2
DECLARE @DeliveryParcelGroup Int32
SET     @DeliveryParcelGroup = 3
DECLARE @DeliveryParcelID Int32
SET     @DeliveryParcelID = 4
DECLARE @ReceiptDealNumber Int32
SET     @ReceiptDealNumber = 8
DECLARE @ReceiptParcelGroup Int32
SET     @ReceiptParcelGroup = 6
DECLARE @ReceiptParcelID Int32
SET     @ReceiptParcelID = 9

INSERT INTO "NominationValid"
(
	"Id",
	"DeliveryDealNumber",
	"DeliveryParcelGroup",
	"DeliveryParcelID",
	"ReceiptDealNumber",
	"ReceiptParcelGroup",
	"ReceiptParcelID"
)
VALUES
(
	:Id,
	:DeliveryDealNumber,
	:DeliveryParcelGroup,
	:DeliveryParcelID,
	:ReceiptDealNumber,
	:ReceiptParcelGroup,
	:ReceiptParcelID
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 90

SELECT
	after_1."Id",
	after_1."DealNumber",
	after_1."ParcelGroupID",
	after_1."ParcelID",
	x."Id" as "Id_1",
	x."DeliveryDealNumber",
	x."DeliveryParcelGroup",
	x."DeliveryParcelID",
	x."ReceiptDealNumber",
	x."ReceiptParcelGroup",
	x."ReceiptParcelID",
	arg3."Id" as "Id_2",
	arg3."DeliveryDealNumber" as "DeliveryDealNumber_1",
	arg3."DeliveryParcelGroup" as "DeliveryParcelGroup_1",
	arg3."DeliveryParcelID" as "DeliveryParcelID_1",
	arg3."ReceiptDealNumber" as "ReceiptDealNumber_1",
	arg3."ReceiptParcelGroup" as "ReceiptParcelGroup_1",
	arg3."ReceiptParcelID" as "ReceiptParcelID_1"
FROM
	"TradeValid" after_1
		LEFT JOIN "NominationValid" x ON after_1."DealNumber" = x."DeliveryDealNumber" AND after_1."ParcelGroupID" = x."DeliveryParcelGroup" AND after_1."ParcelID" = x."DeliveryParcelID"
		LEFT JOIN "NominationValid" arg3 ON after_1."DealNumber" = arg3."ReceiptDealNumber" AND after_1."ParcelGroupID" = arg3."ReceiptParcelGroup" AND after_1."ParcelID" = arg3."ReceiptParcelID"
ORDER BY
	after_1."Id"
FETCH NEXT :take ROWS ONLY

