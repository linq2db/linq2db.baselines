(318347) SELECT 
	t318347.Id = t318346.Id
FROM [DctSetpointtype(318346)] as t318346 (spt)
		LEFT JOIN (
			[VWellTree(318349)] as t318349 (t2)
				INNER JOIN [DctOu(318351)] as t318351 (tp2) ON ({t318349.ShopId?}? = {t318351.Id})
				LEFT JOIN [UacUsersDatagroup(318354)] as t318354 (cudg) ON ({t318351.Id} = {t318354.DatagroupId} AND {t318354.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318359)] as t318359 (oudg) ON ({t318351.ParentId?}? = {t318359.DatagroupId} AND {t318359.UserId} = 150 AND {t318359.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318379)] as t318379 (d) ON ({t318349.WellId?}? = {t318379.WellId})
		)  ON ({t318379.SetpointtypeId} = {t318346.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318354.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318359.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
