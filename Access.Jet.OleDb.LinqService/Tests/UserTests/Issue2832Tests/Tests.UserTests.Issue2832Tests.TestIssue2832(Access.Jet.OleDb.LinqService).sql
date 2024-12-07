(307260) SELECT 
	t307260.Id = t307259.Id
FROM [DctSetpointtype(307259)] as t307259 (spt)
		LEFT JOIN (
			(307296) SELECT 
				t307296.SetpointtypeId = t307292.SetpointtypeId
			FROM [VWellTree(307262)] as t307262 (t2)
					INNER JOIN [DctOu(307264)] as t307264 (tp2) ON ({t307262.ShopId?}? = {t307264.Id})
					LEFT JOIN [UacUsersDatagroup(307267)] as t307267 (cudg) ON ({t307264.Id} = {t307267.DatagroupId} AND {t307267.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307272)] as t307272 (oudg) ON ({t307264.ParentId?}? = {t307272.DatagroupId} AND {t307272.UserId} = 150 AND {t307272.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307292)] as t307292 (d) ON ({t307262.WellId?}? = {t307292.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307267.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307272.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307296 (t2_1) ON ({t307296.SetpointtypeId?} = {t307259.Id})
