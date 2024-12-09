(219224) SELECT 
	t219224.Id = t219223.Id
FROM [DctSetpointtype(219223)] as t219223 (spt)
		LEFT JOIN (
			[VWellTree(219226)] as t219226 (t2)
				INNER JOIN [DctOu(219228)] as t219228 (tp2) ON ({t219226.ShopId?}? = {t219228.Id})
				LEFT JOIN [UacUsersDatagroup(219231)] as t219231 (cudg) ON ({t219228.Id} = {t219231.DatagroupId} AND {t219231.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(219236)] as t219236 (oudg) ON ({t219228.ParentId?}? = {t219236.DatagroupId} AND {t219236.UserId} = 150 AND {t219236.Inheritablepermission} > 0)
				INNER JOIN [Deviation(219256)] as t219256 (d) ON ({t219226.WellId?}? = {t219256.WellId})
		)  ON ({t219256.SetpointtypeId} = {t219223.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t219231.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t219236.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
