-- Informix.DB2 Informix
SELECT FIRST 2
	Power(r.D::Float, 0.00005::Float)::Decimal(18, 4) + r.D
FROM
	PowScale r

