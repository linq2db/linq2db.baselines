(307240) SELECT 
	t307240.Id = t307239.Id
FROM [DctSetpointtype(307239)] as t307239 (spt)
		LEFT JOIN (
			(307276) SELECT 
				t307276.SetpointtypeId = t307272.SetpointtypeId
			FROM [VWellTree(307242)] as t307242 (t2)
					INNER JOIN [DctOu(307244)] as t307244 (tp2) ON ({t307242.ShopId?}? = {t307244.Id})
					LEFT JOIN [UacUsersDatagroup(307247)] as t307247 (cudg) ON ({t307244.Id} = {t307247.DatagroupId} AND {t307247.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307252)] as t307252 (oudg) ON ({t307244.ParentId?}? = {t307252.DatagroupId} AND {t307252.UserId} = 150 AND {t307252.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307272)] as t307272 (d) ON ({t307242.WellId?}? = {t307272.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307247.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307252.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307276 (t2_1) ON ({t307276.SetpointtypeId?} = {t307239.Id})
