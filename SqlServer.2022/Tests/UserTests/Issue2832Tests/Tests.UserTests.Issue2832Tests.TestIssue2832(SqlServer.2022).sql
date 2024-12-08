(245345) SELECT 
	t245345.Id = t245344.Id
FROM [DctSetpointtype(245344)] as t245344 (spt)
		LEFT JOIN (
			[VWellTree(245347)] as t245347 (t2)
				INNER JOIN [DctOu(245349)] as t245349 (tp2) ON ({t245347.ShopId?}? = {t245349.Id})
				LEFT JOIN [UacUsersDatagroup(245352)] as t245352 (cudg) ON ({t245349.Id} = {t245352.DatagroupId} AND {t245352.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245357)] as t245357 (oudg) ON ({t245349.ParentId?}? = {t245357.DatagroupId} AND {t245357.UserId} = 150 AND {t245357.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245377)] as t245377 (d) ON ({t245347.WellId?}? = {t245377.WellId})
		)  ON ({t245377.SetpointtypeId} = {t245344.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245352.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245357.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
