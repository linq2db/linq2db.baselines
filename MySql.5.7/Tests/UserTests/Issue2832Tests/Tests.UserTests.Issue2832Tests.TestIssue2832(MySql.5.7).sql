(318311) SELECT 
	t318311.Id = t318310.Id
FROM [DctSetpointtype(318310)] as t318310 (spt)
		LEFT JOIN (
			[VWellTree(318313)] as t318313 (t2)
				INNER JOIN [DctOu(318315)] as t318315 (tp2) ON ({t318313.ShopId?}? = {t318315.Id})
				LEFT JOIN [UacUsersDatagroup(318318)] as t318318 (cudg) ON ({t318315.Id} = {t318318.DatagroupId} AND {t318318.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318323)] as t318323 (oudg) ON ({t318315.ParentId?}? = {t318323.DatagroupId} AND {t318323.UserId} = 150 AND {t318323.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318343)] as t318343 (d) ON ({t318313.WellId?}? = {t318343.WellId})
		)  ON ({t318343.SetpointtypeId} = {t318310.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318318.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318323.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
