# My-Openbox

If you read my blog;

https://blog.carnifex.org/2024/11/minimalist-linux.html

https://blog.carnifex.org/2024/12/minimalist-linux-ii.html

 and decided that was too much work and you just want your machine to look and act like mine more of less, here is everything you need, plus a shell script to do everything for you.

If all you have is a basic install of Debian 12, you will need to run the following commands.

    sudo apt install git

    git clone https://github.com/cjstoddard/My-Openbox.git

    cd My-Openbox

    chmod +x install.sh

    ./install.sh

If all goes well, you should be able to reboot the system and have everything just work. The most likely problem will be Conky not showing your networking information. If this is the case, run;

	ip addr

Make note of your network device. Edit .conkyrc with nano;

	nano .conkyrc

and look for this section;

    $hr
    ${color grey}Networking:
    IP Address:$color ${addr enp3s0}
    Up:$color ${upspeed enp3s0} ${color grey} - Down:$color ${downspeed enp3s0}

My network device is enp3s0, you will need replace my network device with your network device.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

