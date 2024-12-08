(307201) SELECT 
	t307201.Id = t307200.Id
FROM [DctSetpointtype(307200)] as t307200 (spt)
		LEFT JOIN (
			(307237) SELECT 
				t307237.SetpointtypeId = t307233.SetpointtypeId
			FROM [VWellTree(307203)] as t307203 (t2)
					INNER JOIN [DctOu(307205)] as t307205 (tp2) ON ({t307203.ShopId?}? = {t307205.Id})
					LEFT JOIN [UacUsersDatagroup(307208)] as t307208 (cudg) ON ({t307205.Id} = {t307208.DatagroupId} AND {t307208.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307213)] as t307213 (oudg) ON ({t307205.ParentId?}? = {t307213.DatagroupId} AND {t307213.UserId} = 150 AND {t307213.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307233)] as t307233 (d) ON ({t307203.WellId?}? = {t307233.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307208.Permission, t307213.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307237 (t2_1) ON ({t307237.SetpointtypeId?} = {t307200.Id})
