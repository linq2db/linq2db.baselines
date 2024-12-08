(307274) SELECT 
	t307274.Id = t307273.Id
FROM [DctSetpointtype(307273)] as t307273 (spt)
		LEFT JOIN (
			(307310) SELECT 
				t307310.SetpointtypeId = t307306.SetpointtypeId
			FROM [VWellTree(307276)] as t307276 (t2)
					INNER JOIN [DctOu(307278)] as t307278 (tp2) ON ({t307276.ShopId?}? = {t307278.Id})
					LEFT JOIN [UacUsersDatagroup(307281)] as t307281 (cudg) ON ({t307278.Id} = {t307281.DatagroupId} AND {t307281.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307286)] as t307286 (oudg) ON ({t307278.ParentId?}? = {t307286.DatagroupId} AND {t307286.UserId} = 150 AND {t307286.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307306)] as t307306 (d) ON ({t307276.WellId?}? = {t307306.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307281.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307286.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307310 (t2_1) ON ({t307310.SetpointtypeId?} = {t307273.Id})
