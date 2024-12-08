(318350) SELECT 
	t318350.Id = t318349.Id
FROM [DctSetpointtype(318349)] as t318349 (spt)
		LEFT JOIN (
			[VWellTree(318352)] as t318352 (t2)
				INNER JOIN [DctOu(318354)] as t318354 (tp2) ON ({t318352.ShopId?}? = {t318354.Id})
				LEFT JOIN [UacUsersDatagroup(318357)] as t318357 (cudg) ON ({t318354.Id} = {t318357.DatagroupId} AND {t318357.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318362)] as t318362 (oudg) ON ({t318354.ParentId?}? = {t318362.DatagroupId} AND {t318362.UserId} = 150 AND {t318362.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318382)] as t318382 (d) ON ({t318352.WellId?}? = {t318382.WellId})
		)  ON ({t318382.SetpointtypeId} = {t318349.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318357.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318362.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
