#import "TGMediaAssetContentProperty.h"

#import "TGMessage.h"

#import "PSKeyValueCoder.h"

@implementation TGMediaAssetContentProperty

- (instancetype)initWithAssetIdentifier:(NSString *)assetIdentifier isVideo:(bool)isVideo isCloud:(bool)isCloud useMediaCache:(bool)useMediaCache
{
    self = [super init];
    if (self != nil)
    {
        _assetIdentifier = assetIdentifier;
        _isVideo = isVideo;
        _isCloud = isCloud;
        _useMediaCache = useMediaCache;
        _editAdjustments = @{};
    }
    return self;
}

- (instancetype)initWithAssetIdentifier:(NSString *)assetIdentifier isVideo:(bool)isVideo editAdjustments:(NSDictionary *)editAdjustments isCloud:(bool)isCloud useMediaCache:(bool)useMediaCache liveUpload:(bool)liveUpload passthrough:(bool)passthough
{
    self = [super init];
    if (self != nil)
    {
        _assetIdentifier = assetIdentifier;
        _isVideo = isVideo;
        _editAdjustments = editAdjustments ?: @{};
        _isCloud = isCloud;
        _useMediaCache = useMediaCache;
        _liveUpload = liveUpload;
        _passthrough = passthough;
    }
    return self;
}

- (instancetype)initWithKeyValueCoder:(PSKeyValueCoder *)coder
{
    return [self initWithAssetIdentifier:[coder decodeStringForCKey:"assetIdentifier"] isVideo:[coder decodeInt32ForCKey:"isVideo"] editAdjustments:[NSKeyedUnarchiver unarchiveObjectWithData:[coder decodeDataCorCKey:"editAdjustments"]] isCloud:[coder decodeInt32ForCKey:"isCloud"] useMediaCache:[coder decodeInt32ForCKey:"useMediaCache"] liveUpload:[coder decodeInt32ForCKey:"liveUpload"] passthrough:[coder decodeInt32ForCKey:"passthough"]];
}

- (void)encodeWithKeyValueCoder:(PSKeyValueCoder *)coder
{
    [coder encodeString:_assetIdentifier forCKey:"assetIdentifier"];
    [coder encodeInt32:_isVideo forCKey:"isVideo"];
    [coder encodeData:[NSKeyedArchiver archivedDataWithRootObject:_editAdjustments] forCKey:"editAdjustments"];
    [coder encodeInt32:_isCloud forCKey:"isCloud"];
    [coder encodeInt32:_useMediaCache forCKey:"useMediaCache"];
    [coder encodeInt32:_liveUpload forCKey:"liveUpload"];
    [coder encodeInt32:_passthrough forCKey:"passthrough"];
}

@end
