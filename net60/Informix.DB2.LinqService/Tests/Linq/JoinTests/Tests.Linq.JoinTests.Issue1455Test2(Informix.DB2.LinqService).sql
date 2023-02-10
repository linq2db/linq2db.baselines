﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Alert

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Alert
(
	AlertKey     NVarChar(255)                 NULL,
	AlertCode    NVarChar(255)                 NULL,
	CreationDate datetime year to fraction     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AuditAlert

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS AuditAlert
(
	AlertKey        NVarChar(255)                 NULL,
	AlertCode       NVarChar(255)                 NULL,
	CreationDate    datetime year to fraction     NULL,
	TransactionDate datetime year to fraction     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Trade

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Trade
(
	DealId       Int           NOT NULL,
	ParcelId     Int           NOT NULL,
	CounterParty NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Nomin

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Nomin
(
	CargoId              Int           NOT NULL,
	DeliveryId           Int           NOT NULL,
	DeliveryCounterParty NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Flat

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Flat
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

SELECT
	al_1.alert,
	al_1.alert_1,
	al_1.alert_2
FROM
	(
		SELECT
			al.AlertKey as alert,
			al.AlertCode as alert_1,
			al.CreationDate as alert_2
		FROM
			Alert al
				LEFT JOIN AuditAlert au1 ON (au1.AlertKey = al.AlertKey OR au1.AlertKey IS NULL AND al.AlertKey IS NULL) AND (au1.AlertCode = au1.AlertCode OR au1.AlertCode IS NULL AND au1.AlertCode IS NULL)
		GROUP BY
			al.AlertKey,
			al.AlertCode,
			al.CreationDate
	) al_1
		LEFT JOIN Trade trade1 ON (al_1.alert = To_Char(trade1.DealId) OR al_1.alert IS NULL AND To_Char(trade1.DealId) IS NULL)
		LEFT JOIN Nomin nomin1 ON (al_1.alert = To_Char(nomin1.CargoId) OR al_1.alert IS NULL AND To_Char(nomin1.CargoId) IS NULL)
WHERE
	((nomin1.DeliveryCounterParty LIKE '%C%' OR trade1.CounterParty LIKE '%C%') OR al_1.alert_1 LIKE '%C%')
GROUP BY
	al_1.alert,
	al_1.alert_1,
	al_1.alert_2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Flat

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Nomin

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Trade

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AuditAlert

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Alert

