(243441) SELECT 
	t243441.Id = t243440.Id
FROM [DctSetpointtype(243440)] as t243440 (spt)
		LEFT JOIN (
			[VWellTree(243443)] as t243443 (t2)
				INNER JOIN [DctOu(243445)] as t243445 (tp2) ON ({t243443.ShopId?}? = {t243445.Id})
				LEFT JOIN [UacUsersDatagroup(243448)] as t243448 (cudg) ON ({t243445.Id} = {t243448.DatagroupId} AND {t243448.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243453)] as t243453 (oudg) ON ({t243445.ParentId?}? = {t243453.DatagroupId} AND {t243453.UserId} = 150 AND {t243453.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243473)] as t243473 (d) ON ({t243443.WellId?}? = {t243473.WellId})
		)  ON ({t243473.SetpointtypeId} = {t243440.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243448.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t243453.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
