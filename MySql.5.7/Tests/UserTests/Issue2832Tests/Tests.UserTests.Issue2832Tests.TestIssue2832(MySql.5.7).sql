(318349) SELECT 
	t318349.Id = t318348.Id
FROM [DctSetpointtype(318348)] as t318348 (spt)
		LEFT JOIN (
			[VWellTree(318351)] as t318351 (t2)
				INNER JOIN [DctOu(318353)] as t318353 (tp2) ON ({t318351.ShopId?}? = {t318353.Id})
				LEFT JOIN [UacUsersDatagroup(318356)] as t318356 (cudg) ON ({t318353.Id} = {t318356.DatagroupId} AND {t318356.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318361)] as t318361 (oudg) ON ({t318353.ParentId?}? = {t318361.DatagroupId} AND {t318361.UserId} = 150 AND {t318361.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318381)] as t318381 (d) ON ({t318351.WellId?}? = {t318381.WellId})
		)  ON ({t318381.SetpointtypeId} = {t318348.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318356.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318361.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
