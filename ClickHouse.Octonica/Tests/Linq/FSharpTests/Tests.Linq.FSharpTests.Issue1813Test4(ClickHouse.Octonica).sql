-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	after_1.Id,
	after_1.DealNumber,
	after_1.ParcelGroupID,
	after_1.ParcelID,
	x.Id,
	x.DeliveryDealNumber,
	x.DeliveryParcelGroup,
	x.DeliveryParcelID,
	x.ReceiptDealNumber,
	x.ReceiptParcelGroup,
	x.ReceiptParcelID,
	arg3.Id,
	arg3.DeliveryDealNumber,
	arg3.DeliveryParcelGroup,
	arg3.DeliveryParcelID,
	arg3.ReceiptDealNumber,
	arg3.ReceiptParcelGroup,
	arg3.ReceiptParcelID
FROM
	TradeValid after_1
		LEFT JOIN NominationValid x ON after_1.DealNumber = x.DeliveryDealNumber AND after_1.ParcelGroupID = x.DeliveryParcelGroup AND after_1.ParcelID = x.DeliveryParcelID
		LEFT JOIN NominationValid arg3 ON after_1.DealNumber = arg3.ReceiptDealNumber AND after_1.ParcelGroupID = arg3.ReceiptParcelGroup AND after_1.ParcelID = arg3.ReceiptParcelID
ORDER BY
	after_1.Id
LIMIT 90

