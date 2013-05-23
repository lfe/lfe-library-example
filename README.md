# LFE Library Example

This is a tiny example of an LFE library. To see an example of an OTP app, be
sure to visit
<a href="https://github.com/lfe/lfe-service-example">lfe-service-example</a>.

This example assumes that you have
<a href="https://github.com/rebar/rebar">rebar</a> installed in your `$PATH`.

To use, simply do the following:

{% highlight bash %}
    $ rebar compile
    $ make shell
{% endhighlight %}

When the shell fires up, you can then load the module:

{% highlight cl %}
{% endhighlight %}

To use from another project, simple add lfe-library-example to your `deps` in
your rebar config file, and after you `rebar compile` for that project, you
will be able to do the following:

{% highlight cl %}
{% endhighlight %}

