//
//  MBProgressHUD.swift
//  MBProgressSwift
//
//  Created by yebaojia on 16/3/28.
//  Copyright © 2016年 mjia. All rights reserved.
//

import UIKit
enum MBProgressHUDMode: NSInteger{
    // UIActivityIndicatorView.
    case MBProgressHUDModeIndeterminate
    // A round, pie-chart like, progress view.  (饼状)
    case MBProgressHUDModeDeterminate
    // Horizontal progress bar.     （水平）
    case MBProgressHUDModeDeterminateHorizontalBar
    // Ring-shaped progress view   （环状）
    case MBProgressHUDModeAnnularDeterminate
    // Shows a custom view.
    case MBProgressHUDModeCustomView
    // Shows only labels.    (只有文字)
    case MBProgressHUDModeText
}
enum MBProgressHUDAnimation: NSInteger
{
    // Opacity animation
    case MBProgressHUDAnimationFade
    // Opacity + scale animation (zoom in when appearing zoom out when disappearing)
    case MBProgressHUDAnimationZoom
    // Opacity + scale animation (zoom out style)
    case MBProgressHUDAnimationZoomOut
    // Opacity + scale animation (zoom in style)
    case MBProgressHUDAnimationZoomIn
}
enum MBProgressHUDBackgroundStyle: NSInteger
{
    // Solid color background
    case MBProgressHUDBackgroundStyleSolidColor
    // UIVisualEffectView or UIToolbar.layer background view
    case MBProgressHUDBackgroundStyleBlur
}
class MBProgressHUD: UIView {

    /*
    * Grace period is the time (in seconds) that the invoked method may be run without
    * showing the HUD. If the task finishes before the grace time runs out, the HUD will
    * not be shown at all.
    * This may be used to prevent HUD display for very short tasks.
    * Defaults to 0 (no grace time).
    */
    var graceTime:NSTimeInterval?
    /**
     * The minimum time (in seconds) that the HUD is shown.
     * This avoids the problem of the HUD being shown and than instantly hidden.
     * Defaults to 0 (no minimum show time).
     */
    var minShowTime:NSTimeInterval?
    /**
     * Removes the HUD from its parent view when hidden.
     * Defaults to NO.
     */
    var removeFromSuperViewOnHide:Bool?
    /**
    * MBProgressHUD operation mode. The default is MBProgressHUDModeIndeterminate.
    */
    var mode:MBProgressHUDMode?
    /**
    * A color that gets forwarded to all labels and supported indicators. Also sets the tintColor
    * for custom views on iOS 7+. Set to nil to manage color individually.
    * Defaults to semi-translucent black on iOS 7 and later and white on earlier iOS versions.
    */
    var contentColor:UIColor?
    /**
    * The animation type that should be used when the HUD is shown and hidden.
    */
    var animationType:MBProgressHUDAnimation?
    /**
    * The bezel offset relative to the center of the view. You can use MBProgressMaxOffset
    * and -MBProgressMaxOffset to move the HUD all the way to the screen edge in each direction.
    * E.g., CGPointMake(0.f, MBProgressMaxOffset) would position the HUD centered on the bottom edge.
    */
    var offset:CGPoint?
    /**
    * The amount of space between the HUD edge and the HUD elements (labels, indicators or custom views).
    * This also represents the minimum bezel distance to the edge of the HUD view.
    * Defaults to 20.f
    */
    var margin:CGFloat?
    /**
     * The minimum size of the HUD bezel. Defaults to CGSizeZero (no minimum size).
     */
    var minSize:CGSize?
    /**
    * Force the HUD dimensions to be equal if possible.
    */
    var square:Bool = true
    /**
    * When enabled, the bezel center gets slightly affected by the device accelerometer data.
    * Has no effect on iOS < 7.0. Defaults to YES.
    */
    var defaultMotionEffectsEnabled:Bool = true
    // @name Progress
    /**
    * The progress of the progress indicator, from 0.0 to 1.0. Defaults to 0.0.
    */
    var progress:Float?
    // @name Views
    /**
    * The view containing the labels and indicator (or customView).
    */
    var bezelView:UIView?
    /**
    * View coving the entire HUD area, placed behind bezelView.
    */
    var backgroundView:UIView?
    /**
    * The UIView (e.g., a UIImageView) to be shown when the HUD is in MBProgressHUDModeCustomView.
    * The view should implement intrinsicContentSize for proper sizing. For best results use approximately 37 by 37 pixel.
    */
    var customView:UIView?
    /**
    * A label that holds an optional short message to be displayed below the activity indicator. The HUD is automatically resized to fit
    * the entire text.
    */
    var label:UILabel?
    /**
    * A label that holds an optional details message displayed below the labelText message. The details text can span multiple lines.
    */
    var detailsLabel:UILabel?
    /**
    * A button that is placed below the labels. Visible only if a target / action is added.
    */
    var button:UIButton?
    //
    var activityIndicatorColor:UIColor?
    //
    var opacity:CGFloat = 0.0
    //
    let MBProgressMaxOffset = 1000000.0
    //
    let MBDefaultPadding = 4.0
    //
    let MBDefaultLabelFontSize = 16.0
    //
    let MBDefaultDetailsLabelFontSize = 12.0
    //
    var useAnimation:Bool?
    //
    var finished:Bool = true
    //
    var indicator:UIView?
    //
    var graceTimer:NSTimer?
    //
    var minShowTimer:NSTimer?
    //
    var showStarted:NSDate?
    //
    var paddingConstraints:NSArray?
    //
    var bezelConstraints:NSArray?
    //
    var topSpacer:NSArray?
    //
    var completionBlock:(()->())?
    //
    var bottomSpacer:UIView?
   
    class func showHUDAddedTo(view : UIView ,animated : Bool) ->MBProgressHUD{
        var hud  = MBProgressHUD().initWithView(view)
        return hud
    }
    
    // Lifecycle
    func initWithView(view : UIView){
        
    }
    
    func init(frame: CGRect) {
        <#code#>
    }
}

class MBRoundProgressView: UIView {
   
    
    
    
    
}