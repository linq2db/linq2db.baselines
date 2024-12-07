(499420) SELECT 
	t499420.Id = t499419.Id
FROM [DctSetpointtype(499419)] as t499419 (spt)
		LEFT JOIN (
			[VWellTree(499422)] as t499422 (t2)
				INNER JOIN [DctOu(499424)] as t499424 (tp2) ON ({t499422.ShopId?}? = {t499424.Id})
				LEFT JOIN [UacUsersDatagroup(499427)] as t499427 (cudg) ON ({t499424.Id} = {t499427.DatagroupId} AND {t499427.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499432)] as t499432 (oudg) ON ({t499424.ParentId?}? = {t499432.DatagroupId} AND {t499432.UserId} = 150 AND {t499432.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499452)] as t499452 (d) ON ({t499422.WellId?}? = {t499452.WellId})
		)  ON ({t499452.SetpointtypeId} = {t499419.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499427.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t499432.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
