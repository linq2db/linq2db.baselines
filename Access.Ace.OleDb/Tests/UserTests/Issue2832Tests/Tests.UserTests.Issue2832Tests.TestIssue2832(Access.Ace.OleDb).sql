(307144) SELECT 
	t307144.Id = t307143.Id
FROM [DctSetpointtype(307143)] as t307143 (spt)
		LEFT JOIN (
			(307180) SELECT 
				t307180.SetpointtypeId = t307176.SetpointtypeId
			FROM [VWellTree(307146)] as t307146 (t2)
					INNER JOIN [DctOu(307148)] as t307148 (tp2) ON ({t307146.ShopId?}? = {t307148.Id})
					LEFT JOIN [UacUsersDatagroup(307151)] as t307151 (cudg) ON ({t307148.Id} = {t307151.DatagroupId} AND {t307151.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307156)] as t307156 (oudg) ON ({t307148.ParentId?}? = {t307156.DatagroupId} AND {t307156.UserId} = 150 AND {t307156.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307176)] as t307176 (d) ON ({t307146.WellId?}? = {t307176.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307151.Permission, t307156.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307180 (t2_1) ON ({t307180.SetpointtypeId?} = {t307143.Id})
