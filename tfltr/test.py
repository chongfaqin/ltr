import tensorflow as tf

mask1 = tf.equal([1,2,1,3] - tf.transpose([1,2,2,3]), 0)
print(mask1)
mask2 = tf.cast(mask1, tf.float32)
print(mask1)

with tf.Session() as sess:
    sess.run(mask2)
    print(mask1.eval())
    print(mask2.eval())