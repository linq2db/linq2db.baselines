(307235) SELECT 
	t307235.Id = t307234.Id
FROM [DctSetpointtype(307234)] as t307234 (spt)
		LEFT JOIN (
			(307271) SELECT 
				t307271.SetpointtypeId = t307267.SetpointtypeId
			FROM [VWellTree(307237)] as t307237 (t2)
					INNER JOIN [DctOu(307239)] as t307239 (tp2) ON ({t307237.ShopId?}? = {t307239.Id})
					LEFT JOIN [UacUsersDatagroup(307242)] as t307242 (cudg) ON ({t307239.Id} = {t307242.DatagroupId} AND {t307242.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307247)] as t307247 (oudg) ON ({t307239.ParentId?}? = {t307247.DatagroupId} AND {t307247.UserId} = 150 AND {t307247.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307267)] as t307267 (d) ON ({t307237.WellId?}? = {t307267.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307242.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307247.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307271 (t2_1) ON ({t307271.SetpointtypeId?} = {t307234.Id})
