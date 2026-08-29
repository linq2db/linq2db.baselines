-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	1,
	2,
	3,
	4
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	2,
	3,
	4,
	5
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	3,
	5,
	6,
	7
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	4,
	8,
	6,
	9
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	1,
	2,
	3,
	4,
	9,
	9,
	9
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	2,
	9,
	9,
	9,
	3,
	4,
	5
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	3,
	8,
	6,
	9,
	3,
	4,
	5
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	4,
	2,
	3,
	4,
	8,
	6,
	9
)

-- ClickHouse.MySql ClickHouse
SELECT
	after_1.Id,
	after_1.DealNumber,
	after_1.ParcelGroupID,
	after_1.ParcelID,
	arg4.Id,
	arg4.DeliveryDealNumber,
	arg4.DeliveryParcelGroup,
	arg4.DeliveryParcelID,
	arg4.ReceiptDealNumber,
	arg4.ReceiptParcelGroup,
	arg4.ReceiptParcelID,
	arg2.Id,
	arg2.DeliveryDealNumber,
	arg2.DeliveryParcelGroup,
	arg2.DeliveryParcelID,
	arg2.ReceiptDealNumber,
	arg2.ReceiptParcelGroup,
	arg2.ReceiptParcelID
FROM
	TradeValid after_1
		LEFT JOIN NominationValid arg2 ON arg2.ReceiptDealNumber = after_1.DealNumber AND arg2.ReceiptParcelGroup = after_1.ParcelGroupID AND arg2.ReceiptParcelID = after_1.ParcelID
		LEFT JOIN NominationValid arg4 ON arg4.ReceiptDealNumber = after_1.DealNumber AND arg4.ReceiptParcelGroup = after_1.ParcelGroupID AND arg4.ReceiptParcelID = after_1.ParcelID
ORDER BY
	after_1.Id
LIMIT 90

