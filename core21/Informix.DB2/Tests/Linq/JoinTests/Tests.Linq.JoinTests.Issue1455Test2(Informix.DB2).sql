BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Alert
(
	AlertKey     NVarChar(255)                 NULL,
	AlertCode    NVarChar(255)                 NULL,
	CreationDate datetime year to fraction     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE AuditAlert
(
	CreationDate    datetime year to fraction     NULL,
	AlertCode       NVarChar(255)                 NULL,
	AlertKey        NVarChar(255)                 NULL,
	TransactionDate datetime year to fraction     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Trade
(
	DealId       Int           NOT NULL,
	ParcelId     Int           NOT NULL,
	CounterParty NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Nomin
(
	CargoId              Int           NOT NULL,
	DeliveryId           Int           NOT NULL,
	DeliveryCounterParty NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Flat
(
	AlertKey             NVarChar(255)                 NULL,
	AlertCode            NVarChar(255)                 NULL,
	CargoId              Int                           NULL,
	DeliveryId           Int                           NULL,
	DeliveryCounterParty NVarChar(255)                 NULL,
	DealId               Int                           NULL,
	ParcelId             Int                           NULL,
	CounterParty         NVarChar(255)                 NULL,
	TransactionDate      datetime year to fraction     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Flat

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Nomin

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Trade

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE AuditAlert

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Alert

