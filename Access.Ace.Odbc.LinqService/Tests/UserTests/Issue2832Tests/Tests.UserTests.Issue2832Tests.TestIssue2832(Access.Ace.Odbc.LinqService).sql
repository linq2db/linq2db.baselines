(307269) SELECT 
	t307269.Id = t307268.Id
FROM [DctSetpointtype(307268)] as t307268 (spt)
		LEFT JOIN (
			(307305) SELECT 
				t307305.SetpointtypeId = t307301.SetpointtypeId
			FROM [VWellTree(307271)] as t307271 (t2)
					INNER JOIN [DctOu(307273)] as t307273 (tp2) ON ({t307271.ShopId?}? = {t307273.Id})
					LEFT JOIN [UacUsersDatagroup(307276)] as t307276 (cudg) ON ({t307273.Id} = {t307276.DatagroupId} AND {t307276.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307281)] as t307281 (oudg) ON ({t307273.ParentId?}? = {t307281.DatagroupId} AND {t307281.UserId} = 150 AND {t307281.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307301)] as t307301 (d) ON ({t307271.WellId?}? = {t307301.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307276.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307281.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307305 (t2_1) ON ({t307305.SetpointtypeId?} = {t307268.Id})
