#import "TLAudio.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"


@implementation TLAudio


- (int32_t)TLconstructorSignature
{
    TGLog(@"constructorSignature is not implemented for base type");
    return 0;
}

- (int32_t)TLconstructorName
{
    TGLog(@"constructorName is not implemented for base type");
    return 0;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)__unused metaObject
{
    TGLog(@"TLbuildFromMetaObject is not implemented for base type");
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
    TGLog(@"TLfillFieldsWithValues is not implemented for base type");
}


@end

@implementation TLAudio$audioEmpty : TLAudio


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x586988d8;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x3be1b474;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)metaObject
{
    TLAudio$audioEmpty *object = [[TLAudio$audioEmpty alloc] init];
    object.n_id = metaObject->getInt64((int32_t)0x7a5601fb);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
}


@end

@implementation TLAudio$audio : TLAudio


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xf9e35055;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x88cc1b1;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)metaObject
{
    TLAudio$audio *object = [[TLAudio$audio alloc] init];
    object.n_id = metaObject->getInt64((int32_t)0x7a5601fb);
    object.access_hash = metaObject->getInt64((int32_t)0x8f305224);
    object.date = metaObject->getInt32((int32_t)0xb76958ba);
    object.duration = metaObject->getInt32((int32_t)0xac00f752);
    object.mime_type = metaObject->getString((int32_t)0xcd8e470b);
    object.size = metaObject->getInt32((int32_t)0x5a228f5e);
    object.dc_id = metaObject->getInt32((int32_t)0xae973dc4);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.n_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x7a5601fb, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.access_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8f305224, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.date;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xb76958ba, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.duration;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xac00f752, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.mime_type;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xcd8e470b, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.size;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x5a228f5e, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.dc_id;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xae973dc4, value));
    }
}


@end

