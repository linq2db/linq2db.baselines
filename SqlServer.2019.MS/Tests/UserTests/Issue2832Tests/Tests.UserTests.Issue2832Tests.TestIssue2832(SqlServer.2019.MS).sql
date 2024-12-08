(245412) SELECT 
	t245412.Id = t245411.Id
FROM [DctSetpointtype(245411)] as t245411 (spt)
		LEFT JOIN (
			[VWellTree(245414)] as t245414 (t2)
				INNER JOIN [DctOu(245416)] as t245416 (tp2) ON ({t245414.ShopId?}? = {t245416.Id})
				LEFT JOIN [UacUsersDatagroup(245419)] as t245419 (cudg) ON ({t245416.Id} = {t245419.DatagroupId} AND {t245419.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245424)] as t245424 (oudg) ON ({t245416.ParentId?}? = {t245424.DatagroupId} AND {t245424.UserId} = 150 AND {t245424.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245444)] as t245444 (d) ON ({t245414.WellId?}? = {t245444.WellId})
		)  ON ({t245444.SetpointtypeId} = {t245411.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245419.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245424.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
